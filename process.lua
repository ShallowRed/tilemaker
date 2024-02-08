WAY_TYPES = { "track" }
-- WAY_TYPES = { "path" }
-- WAY_TYPES = { "path", "track" }
-- WAY_TYPES = { "path", "cycleway", "track" }

WAY_KEYS = { "tracktype", "surface", "bicycle", "smoothness", "mtb:scale", "mtb:scale:uphill", "surface" }

function way_function(way)
	local wayType = way:Find("highway")
	for i, type in ipairs(WAY_TYPES) do
		if wayType==type then
			local isClosed = way:IsClosed()
			local length
			if isClosed then
				length=math.sqrt(way:Area())
			else 
				length=way:Length()
			end
			if type=="track" and length>500 then
			-- if type=="path" or length>500 then
				way:Layer("chemins-track-long", false)
				way:Attribute("class", wayType)
				setAttributes(way)
				SetMinZoomByLength(way, length)
			end
		end
	end
end

-- Set attributes based on OSM tags
function setAttributes(way)
	for j, key in ipairs(WAY_KEYS) do
		local value = way:Find(key)
		if value~="" then
			way:Attribute(key, value)
		else
			way:Attribute(key, "unknown")
		end
	end
end

-- Set minimum zoom level by length
function SetMinZoomByLength(way, length)
	if length<200 then way:MinZoom(10)
	elseif length<400 then way:MinZoom(9)
	elseif length<800 then way:MinZoom(8)
	elseif length<1600 then way:MinZoom(7)
	elseif length<3200 then way:MinZoom(6)
	elseif length<6400 then way:MinZoom(5)
	end
end

-- required for script
node_keys = {}
function init_function() end
function exit_function() end
function node_function(node) end