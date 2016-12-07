<?php

use Shopware_Components_Plugin_Bootstrap as Bootstrap;

abstract class Shopware_Plugins_Frontend_HeptacomAdvancedShare_Components_Plugin_Bootstrap extends Bootstrap
{
    protected $pluginInfo;

    /**
     * @param null $key
     * @param null $default
     * @return mixed|null
     * @throws Enlight_Exception
     */
    protected function getPluginInfo($key = null, $default = null)
    {
        if (is_null($this->pluginInfo)) {
            $this->pluginInfo = json_decode(
                file_get_contents(implode(DIRECTORY_SEPARATOR, [$this->Path(), 'plugin.json'])),
                true
            );
        }

        if (!is_null($key)) {
            if (array_key_exists($key, $this->pluginInfo)) {
                return $this->pluginInfo[$key];
            } else {
                if (!is_null($default)) {
                    return $default;
                } else {
                    throw new Enlight_Exception('Plugin information "' . $key . '" not found.');
                }
            }
        } else {
            return $this->pluginInfo;
        }
    }

    /**
     * @return mixed|null
     */
    public function getLabel()
    {
        return $this->getPluginInfo('label');
    }

    /**
     * @return array
     */
    public function getInfo()
    {
        return [
            'version' => $this->getVersion(),
            'label' => $this->getLabel(),
            'supplier' => $this->getPluginInfo('author'),
            'author' => $this->getPluginInfo('author'),
            'description' => $this->getPluginInfo('description', ''),
            'link' => $this->getPluginInfo('link'),
        ];
    }

    /**
     * @return bool
     */
    public function install()
    {
        $this->subscribeEvent('Enlight_Controller_Front_StartDispatch', 'onRegisterSubscriber')
            ->subscribeEvent('Shopware_Console_Add_Command', 'onRegisterSubscriber');

        return true;
    }

    /**
     * @param Enlight_Event_EventArgs $args
     */
    public function onRegisterSubscriber(Enlight_Event_EventArgs $args)
    {
        $this->registerComponents();
        $this->registerCustomModels();

        foreach ($this->getSubscribers() as $subscriber) {
            $this->Application()->Events()->addSubscriber($subscriber);
        }
    }

    public function registerComponents()
    {
    }

    /**
     * @return array
     */
    protected function getSubscribers()
    {
        return [];
    }
}
